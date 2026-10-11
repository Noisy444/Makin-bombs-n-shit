from setuptools import find_packages, setup
import os
from glob import glob
package_name = 'hand_solo_virtual_nav'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
        (os.path.join('share', package_name, 'launch'), glob('launch/*')),
        ('share/' + package_name + '/config', glob('config/*.yaml') + glob('map/*.yaml')),
        ('share/' + package_name + '/rviz', glob('rviz/*.rviz')),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='AP',
    maintainer_email='u3308999@uni.canberra.edu.au',
    description='Hand solo nav package',
    license='Apache-2.0',
    extras_require={
        'test': [
            'pytest',
        ],
    },
    entry_points={
        'console_scripts': [
            'hs_waypoint_follower = hand_solo_virtual_nav.hs_waypoint_follower:main'
        ],
    },
)

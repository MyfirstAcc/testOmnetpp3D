//
// Copyright (C) 2006 OpenSim Ltd.
//
// SPDX-License-Identifier: LGPL-3.0-or-later
//


package obstacle;

import inet.environment.common.PhysicalEnvironment;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.AdhocHost;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.common.IntegratedVisualizer;

network ObstacleTest
{
    parameters:
        int numHosts;
        @display("bgb=1200,1000");
    submodules:
       visualizer: IntegratedVisualizer {
            parameters:
                @display("p=100,50");
        }
        physicalEnvironment: PhysicalEnvironment {
            parameters:
                @display("p=100,200;is=s");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
                @display("p=100,100;is=s");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            parameters:
                @display("p=100,300;is=s");
        }
        host[numHosts]: AdhocHost {
            parameters:
                @display("r=,,#707070;p=250,250");
        }
}
